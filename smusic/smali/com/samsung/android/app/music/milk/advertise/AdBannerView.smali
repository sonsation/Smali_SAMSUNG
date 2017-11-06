.class public Lcom/samsung/android/app/music/milk/advertise/AdBannerView;
.super Landroid/widget/LinearLayout;
.source "AdBannerView.java"


# instance fields
.field public adBannerListener:Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;->adBannerListener:Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;->adBannerListener:Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;

    .line 16
    return-void
.end method


# virtual methods
.method public setBannerListener(Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;)V
    .locals 0
    .param p1, "adBannerListener"    # Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;->adBannerListener:Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;

    .line 20
    return-void
.end method
