.class Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;
.super Ljava/lang/Object;
.source "AdFragmentMezzoFullBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->access$000(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;)Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "843"

    const-string v2, "8122"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->clearStickyAction()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 101
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "843"

    const-string v2, "8132"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
