.class Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$3;
.super Ljava/lang/Object;
.source "AdFragmentMezzoFullBanner.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$3;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$3;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$3;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    :cond_0
    return-void
.end method
