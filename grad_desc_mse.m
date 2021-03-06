function [ws, history] = grad_desc_mse(K, ws, learning_eps, loss, grad_loss, verbose)
    history(1) = loss(ws);
    for k = 1:K
        grad_ws = grad_loss(ws);
        old_ws = ws;
        ws= old_ws - learning_eps * grad_ws;
        if verbose
            line([old_ws(1),ws(1)],[old_ws(2),ws(2)]);
        end
        history(k+1) = loss(ws);
    end
end