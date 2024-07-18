//
//  PDFViewKit.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 18/07/24.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
    
    let url: URL

    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.backgroundColor = .white
        pdfView.document = PDFDocument(url: url)
        pdfView.autoScales = true
        
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        // Update pdf if needed
        pdfView.document = PDFDocument(url: url)
    }
}
