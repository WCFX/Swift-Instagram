
import UIKit

class Utilities {
  func inputContainerView(textField: UITextField) -> UIView {
    let view = UIView()
    view.heightAnchor.constraint(equalToConstant: 50).isActive = true

    view.addSubview(textField)
    textField.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)

    let dividerView = UIView()
    dividerView.backgroundColor = .white
    view.addSubview(dividerView)
    dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, height: 0.75)

    return view
  }

  func textField(withPlaceholder placeholder: String) -> UITextField {
    let tf = UITextField()
    tf.textColor = .white
    tf.autocapitalizationType = .none
    tf.font = UIFont.systemFont(ofSize: 16)
    tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

    return tf
  }

  func atttributedButton(_ fristPart: String, _ secondPart: String) -> UIButton {
    let button = UIButton(type: .system)

    let attributedTitle = NSMutableAttributedString(string: fristPart, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                                                                                        NSAttributedString.Key.foregroundColor: UIColor.white])

    attributedTitle.append(NSAttributedString(string: secondPart, attributes: [NSMutableAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),
                                                                                    NSMutableAttributedString.Key.foregroundColor: UIColor.white]))

    button.setAttributedTitle(attributedTitle, for: .normal)

    return button
  }
}
