//
//  ViewController.swift
//  TestYogaKit
//
//  Created by Gu Chao on 2018/03/19.
//  Copyright © 2018 Line corp. All rights reserved.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let root = UIView()
        view.addSubview(root)
        root.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.width = 300
            layout.height = 400
        }

        setupSceneWithFlex(root)
        setupSceneWithFlexGrow(root)

        view.yoga.isEnabled = true
        view.yoga.flexDirection = .column
        view.yoga.alignItems = .center
        view.yoga.applyLayout(preservingOrigin: false, dimensionFlexibility: .flexibleHeigth)
    }

    func setupSceneWithFlex(_ root: UIView) {
        let container = UIView()
        root.addSubview(container)
        container.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.width = 300
            layout.height = 100
            layout.alignSelf = .center
        }


        let rowContainer = UIView()
        container.addSubview(rowContainer)
        rowContainer.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flex = 1
            layout.flexDirection = .row
        }
        rowContainer.backgroundColor = .yellow

        let columnContainer = UIView()
        rowContainer.addSubview(columnContainer)
        columnContainer.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.flex = 1
        }
        columnContainer.backgroundColor = .green

        let leftLabel = UILabel()
        columnContainer.addSubview(leftLabel)
        leftLabel.configureLayout { (layout) in
            layout.isEnabled = true
        }
        leftLabel.text = "Hello Hello Hello"

        let rightLabel = UILabel()
        rowContainer.addSubview(rightLabel)
        rightLabel.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flex = 1
        }
        rightLabel.text = "hello"
    }

    func setupSceneWithFlexGrow(_ root: UIView) {
        let container = UIView()
        root.addSubview(container)
        container.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.width = 300
            layout.height = 100
            layout.alignSelf = .center
        }


        let rowContainer = UIView()
        container.addSubview(rowContainer)
        rowContainer.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexGrow = 1
            layout.flexShrink = 1
            layout.flexDirection = .row
        }
        rowContainer.backgroundColor = .yellow

        let columnContainer = UIView()
        rowContainer.addSubview(columnContainer)
        columnContainer.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.flexGrow = 1
            layout.flexShrink = 1
        }
        columnContainer.backgroundColor = .green

        let leftLabel = UILabel()
        columnContainer.addSubview(leftLabel)
        leftLabel.configureLayout { (layout) in
            layout.isEnabled = true
        }
        leftLabel.text = "Hello Hello Hello"

        let rightLabel = UILabel()
        rowContainer.addSubview(rightLabel)
        rightLabel.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexGrow = 1
            layout.flexShrink = 1
        }
        rightLabel.text = "hello"
    }

}

