//
//  AudioPlayer.swift
//  Restart
//
//  Created by Pierce Goulimis on 2022-06-16.
//

import Foundation
import AVFoundation


var audioPlayer: AVAudioPlayer?


//Function to play a sound. Has two parameters: 1. File Name, 2. File Extension. The sound parameter is the name of the sound file, and the type is the type of media.
func playSound(sound: String, type: String) {
    
    //Bundle.main.path returns the full pathname for the resource we are requesting
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        
        //Do catch statement to ensure we don't crash the app.
        do {
            
            //Try to get the file with the path we have been provided, and play the sound
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            //If above didn't work, print out an error to explain what went wrong
            print(error.localizedDescription)
        }
        
    }
    
}
