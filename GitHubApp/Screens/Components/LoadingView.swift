import UIKit

final class LoadingView: UIView {
    
    private lazy var activityIndicatorView: UIStackView = {
        
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        
        let loading = UILabel()
        loading.text = "Loading..."
        loading.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        loading.textAlignment = .center
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(loading)
        stackView.addArrangedSubview(view)
        
        
        return stackView
        
    }()
    
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        addSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        addSubview(activityIndicatorView)
        
    }
    
    func configureConstraints() {
        
        NSLayoutConstraint.activate([
            
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
