//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by John Kouris on 8/14/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    
    let planetController = PlanetController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
        
        let planet = planetController.planets[indexPath.item]
        cell.imageView.image = planet.image
        cell.textLabel.text = planet.name
        
        return cell
    }
    
    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue) {
        
    }
}
