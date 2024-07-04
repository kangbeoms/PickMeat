//
//  CameraView+VerticalControlBar.swift
//  PickMeatProject
//
//  Created by 박정민 on 7/4/24.
//

import SwiftUI

extension CameraView {
    @ViewBuilder var verticalControlBar: some View {
        if VM.hasPhoto {
            verticalControlBarPrePhoto
        } else {
            verticalControlBarPrePhoto
        }
    }
    
    var verticalControlBarPrePhoto: some View {
        VStack {
            changeCamera
                .frame(height: controlButtonWidth)
            photoCaptureButton
                .frame(height: controlButtonWidth)
            AlbumButton
                .frame(height: controlButtonWidth)
        }
    }
    
    var verticalControlBarPostPhoto: some View {
        VStack {
            usePhotoButton
                .frame(height: controlButtonWidth)
            Spacer()
            retakeButton
                .frame(height: controlButtonWidth)
        }
    }
}


#Preview {
    CameraView(imageData: .constant(nil), showCamera: .constant(true))
}
