class CheckoutController < ApplicationController
    CheckoutController.class_eval do
        skip_before_filter :verify_authenticity_token, :ensure_valid_state
        before_filter :two_checkout_hook, :only => [:update]
    
        helper_method :payment_method
    
        def two_checkout_success
          @item = item.find_by_number!(params[:cart_item_id])
          two_checkout_validate
          payment = @item.payments.create(:amount => @item.total, :payment_method_id => payment_method.id)
          payment.started_processing
          payment.complete!
          @item.state='complete'
          @item.finalize!
          payment.save
          session[:item_id] = nil
          redirect_to item_url(@item, {:checkout_complete => true, :item_token => @item.token})
        end
    
        private
    
        def two_checkout_hook
         return unless (params[:state] == "payment")
         return unless params[:item][:payments_attributes]
         payment_method_id = PaymentMethod.find(params[:item][:payments_attributes].first[:payment_method_id])
        end
    
        def two_checkout_validate
          if payment_method.preferred(:test_mode)
            item_number = 1
          else
            item_number = params['item_number']
          end
          if Digest::MD5.hexdigest("#{payment_method.preferred(:secret_word)}#{payment_method.preferred(:sid)}#{item_number}#{'%.2f' % @item.total}").upcase != params['key']
           abort("MD5 does not match.")
          end
        end
    
        def payment_method
          @payment_method ||= PaymentMethod.find(@item.payments.last.payment_method)
        end
      end
    end
end
