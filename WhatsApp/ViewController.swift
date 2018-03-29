import UIKit

class ViewController: UIViewController {

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        loadWeb()
    }

    // MARK: - Private

    private lazy var webView: UIWebView = {
        let webView = UIWebView()
        return webView
    }()

    private func setUpView() {
        view.addSubview(webView)
        setUpWebViewConstraints()
    }

    private func loadWeb() {
        let url = URL (string: "https://web.whatsapp.com");
        UserDefaults.standard.register(defaults: ["UserAgent" : "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6"])
        let request = URLRequest(url: url! as URL);
        webView.loadRequest(request);
    }

    private func setUpWebViewConstraints() {
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
