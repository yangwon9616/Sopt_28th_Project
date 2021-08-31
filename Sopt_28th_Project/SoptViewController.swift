
import UIKit

class SoptViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var serviceList : [ServiceListDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setServiceList()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
    }
    
    func setServiceList()
        {
            serviceList.append(contentsOf: [
                ServiceListDataModel(profileImage : "profileImage1",
                                name: "안솝트",
                                state: "배고파요"),
                
                ServiceListDataModel(profileImage: "profileImage2",
                                name: "최솝트",
                                state: "피곤해요"),
                
                ServiceListDataModel(profileImage: "profileImage3",
                                name: "정솝트",
                                state: "시험언제끝나죠?"),
                
                ServiceListDataModel(profileImage: "profileImage4",
                                name: "이솝트",
                                state: "ㅠㅠㅠㅠ"),
                
                ServiceListDataModel(profileImage: "profileImage5",
                                name: "유솝트",
                                state: "나는 상태메세지!"),
                
                ServiceListDataModel(profileImage: "profileImage6",
                                name: "박솝트",
                                state: "원하는대로 바꿔보세요 ^_^"),
                
                ServiceListDataModel(profileImage: "profileImage7",
                                name: "최솝트",
                                state: "넘 덥다.."),
                
                ServiceListDataModel(profileImage: "profileImage8",
                                name: "원솝트",
                                state: "배고파요"),
                
                ServiceListDataModel(profileImage: "profileImage9",
                                name: "투솝트",
                                state: "내꿈은 대나무부자"),
                
                ServiceListDataModel(profileImage: "profileImage10",
                                name: "권솝트",
                                state: "걱정말라구!")
                
                
                
            ])
        }
    
    //셀을 어떻게 보일 것인지, 행동은 어떻게 할 것인지
}



extension SoptViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let serviceCell = tableView.dequeueReusableCell(
                withIdentifier: SoptTableViewCell.identifier,
                for: indexPath)
                as? SoptTableViewCell else {return UITableViewCell()}
        serviceCell.setData(
            imageName: serviceList[indexPath].imageName,
            name: serviceList[indexPath].name,
            state: serviceList[indexPath].state
        )
    }
}

//cell은 몇 개?, 어떤 데이터?
extension SoptViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceList.count
    }
    
    
    
}
