.class public Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;
.super Landroid/app/Fragment;
.source "AdFragmentMezzoFullBanner.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdFragmentMezzoFullBanner-"


# instance fields
.field private mType:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;)Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->mType:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    return-object v0
.end method

.method public static newInstance(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;
    .locals 4
    .param p0, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    .line 35
    const-string v2, "AdFragmentMezzoFullBanner-"

    const-string v3, "AdFragmentMezzoFullBanner"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;-><init>()V

    .line 38
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;
    iput-object p0, v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->mType:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EXTRA_AD_POPUP_TYPE"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    const-string v0, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "843"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f040131

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 124
    const-string v0, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onKeyBackPressed()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v1, "onKeyBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->mType:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->postStickyAdPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 138
    const-string v0, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 131
    const-string v0, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    const-string v4, "AdFragmentMezzoFullBanner-"

    const-string/jumbo v5, "onViewCreated"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const v4, 0x7f120396

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "btClose":Landroid/view/View;
    new-instance v4, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v4, 0x7f120394

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, "btDoNotShow":Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 87
    new-instance v4, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$2;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v4, 0x7f120395

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;

    .line 105
    .local v1, "adBannerView":Lcom/samsung/android/app/music/milk/advertise/AdBannerView;
    new-instance v4, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner$3;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/advertise/AdBannerView;->setBannerListener(Lcom/samsung/android/app/music/milk/advertise/IAdBannerListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;

    .line 115
    .local v0, "activity":Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;)V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    return-void
.end method
