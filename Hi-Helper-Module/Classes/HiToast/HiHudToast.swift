//
//  HiHudToast.swift.swift
//  SwiftProject
//
//  Created by stone on 2021/5/24.
//

import MBProgressHUD

public class HiHudToast {
    public static func showHUD(ctrl:UIViewController) {
        guard let view = UIApplication.shared.delegate?.window ?? ctrl.view else { return };
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.mode = MBProgressHUDMode.indeterminate
    }
    public static func show(ctrl:UIViewController,_ message: String) {
        guard let view = UIApplication.shared.delegate?.window ?? ctrl.view else { return };
        let hud = MBProgressHUD.showAdded(to:  view, animated: true)
        hud.mode = MBProgressHUDMode.indeterminate
        hud.label.text = message;
    }
    public static func hideHUD(ctrl:UIViewController) {//.hideAllHUDs(for: ctrl.view, animated: true)
        guard let view = UIApplication.shared.delegate?.window ?? ctrl.view else { return };
        MBProgressHUD.hide(for: view, animated: true)
    }
}
