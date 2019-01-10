//
//  SecondViewController.swift
//  LifeCycleViewController
//
//  Created by Artem Karmaz on 1/10/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    //2
    // инициализируется каждый раз, когда открывается этот экран
    var someProperties: String? {
        didSet {
            print("someProperties init!")
        }
    }

    @IBOutlet weak var closeSecondViewControllerButton: UIButton! {
        didSet {
            print("closeSecondViewControllerButton init!")
        }
    }
    
//    override func loadView() {
//        print("Hi! A'm load view")
//    }
////    override func loadViewIfNeeded() {
//        print("Hi! I'm loadViewIfNeeded")
//    }
    
    // 1
    // метод который срабатывает до начала загрузки представления, как только поступакт команда для открытия экрана
    override func awakeFromNib() {
        print("I'm awakeFromNib")
    }
    
    // 3
    // viewDidLoad метод, срабатывает после загрузки View (его на экране не видно, но в памяти он есть) и в этот момент можно вызывать различные методы, которые вызвать можно из этого метода
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloViewDidLoad()
    }
    
    
    // 4
    // метод (вью сейчас отобразится на экране)
    // метод срабатывает перед появлением view на экране
    override func viewWillAppear(_ animated: Bool) {
        print("I'm viewWillAppear")
    }
    
    // 5
    // метод срабатывает перед тем, как размер view будет изменен под размер экрана
    override func viewWillLayoutSubviews() {
        print("I'm viewWillLayoutSubviews")
    }
    
    // 6
    // метод срабатывает после того, как размер view изменился под размер экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    // 7
    // метод срабатывает когда view уже появился
    override func viewDidAppear(_ animated: Bool) {
        print("I'm viewDidAppear")
    }
    
    // 8
    // метод который следит за поворотом экрана и в этот момент, когда пользователь поворачивает экран, перед тем как view изменит ориентацию срабатывает данный метод
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("I'm viewWillTransition")
    }
    
    // 9
    // данный метод срабатывает в тот момент, когда память на устройстве заканчивается и приложение может быть закрыто. в этот момент вы как разработчик можете отправить юзеру пуш уведомление, что в связи с нехваткой памяти может быть закрыто
    // если приложение работает в бекграунде и может быть закрыто, то при срабатывании этого метода можно сохранить какие-либо данные
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func helloViewDidLoad() {
        print("I'm viewDidLoad")
    }

    @IBAction func closeSecondViewControllerButtonAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // 10
    // метод говорит о том, что view будет закрыта
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    // 11
    // метод срабатывает после того, как view закрылся
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    // 12
    // метод который выгружает объект из памяти и он срабатывает в самую последнюю очередь
    deinit {
        print("deinit!")
    }
}

