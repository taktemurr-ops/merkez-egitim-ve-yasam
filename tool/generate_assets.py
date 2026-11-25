#!/usr/bin/env python3
"""Eğitim ve Yaşam merkezinin özgün simge, açılış ve mağaza görselleri (Pillow).
Üçüncü taraf görsel kullanılmaz.  pip install pillow && python tool/generate_assets.py"""
import os
from PIL import Image, ImageDraw

BG_TOP, BG_BOTTOM, ACCENT, LIGHT = (27, 58, 47), (10, 24, 18), (139, 209, 124), (240, 246, 236)


def gradient(w, h):
    im = Image.new("RGB", (w, h))
    d = ImageDraw.Draw(im)
    for y in range(h):
        t = y / max(1, h - 1)
        d.line([(0, y), (w, y)], fill=tuple(int(BG_TOP[i] * (1 - t) + BG_BOTTOM[i] * t) for i in range(3)))
    return im


def glyph(d, cx, cy, s, color=ACCENT):
    """Açık kitap ve üzerinden filizlenen yaprak: özgün, sade çizim."""
    w = max(2, int(s // 14))
    # kitabın iki sayfası
    d.polygon([(cx, cy + s * 0.05), (cx - s * 0.46, cy - s * 0.06), (cx - s * 0.46, cy + s * 0.34), (cx, cy + s * 0.44)], fill=LIGHT)
    d.polygon([(cx, cy + s * 0.05), (cx + s * 0.46, cy - s * 0.06), (cx + s * 0.46, cy + s * 0.34), (cx, cy + s * 0.44)], fill=LIGHT)
    d.line([(cx, cy + s * 0.05), (cx, cy + s * 0.44)], fill=BG_TOP, width=w)
    for k in (0.08, 0.17, 0.26):
        d.line([(cx - s * 0.38, cy + s * (k + 0.02)), (cx - s * 0.08, cy + s * (k + 0.1))], fill=BG_TOP, width=max(1, w // 2))
        d.line([(cx + s * 0.38, cy + s * (k + 0.02)), (cx + s * 0.08, cy + s * (k + 0.1))], fill=BG_TOP, width=max(1, w // 2))
    # filiz ve iki yaprak
    d.line([(cx, cy + s * 0.05), (cx, cy - s * 0.3)], fill=color, width=w)
    d.ellipse([cx - s * 0.26, cy - s * 0.42, cx, cy - s * 0.24], fill=color)
    d.ellipse([cx, cy - s * 0.5, cx + s * 0.28, cy - s * 0.3], fill=color)


def icon(size=1024):
    im = gradient(size, size)
    glyph(ImageDraw.Draw(im), size / 2, size / 2 + size * 0.03, size * 0.7)
    return im


def main():
    os.makedirs("assets/branding", exist_ok=True)
    os.makedirs("store", exist_ok=True)
    ic = icon()
    ic.save("assets/branding/icon.png")
    fg = Image.new("RGBA", (1024, 1024), (0, 0, 0, 0))
    glyph(ImageDraw.Draw(fg), 512, 530, 460)
    fg.save("assets/branding/icon_foreground.png")
    sp = Image.new("RGBA", (768, 768), (0, 0, 0, 0))
    glyph(ImageDraw.Draw(sp), 384, 400, 330)
    sp.save("assets/branding/splash.png")
    a12 = Image.new("RGBA", (1152, 1152), (0, 0, 0, 0))
    glyph(ImageDraw.Draw(a12), 576, 600, 420)
    a12.save("assets/branding/splash_android12.png")
    ic.resize((512, 512)).save("store/icon_512.png")
    fe = gradient(1024, 500)
    glyph(ImageDraw.Draw(fe), 512, 260, 330)
    fe.save("store/feature_graphic.png")
    print("assets ok")


if __name__ == "__main__":
    main()
