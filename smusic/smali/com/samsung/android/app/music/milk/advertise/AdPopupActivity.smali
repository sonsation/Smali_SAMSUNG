.class public Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;
.super Landroid/app/Activity;
.source "AdPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field public static final EXTRA_AD_POPUP_TYPE:Ljava/lang/String; = "EXTRA_AD_POPUP_TYPE"

.field private static final TAG:Ljava/lang/String; = "AdPopupActivity"


# instance fields
.field private mAdType:I

.field private mOnKeyBackPressedListener:Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    const-string v1, "EXTRA_AD_POPUP_TYPE"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method private showAdPopup(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 81
    .local v1, "ft":Landroid/app/FragmentTransaction;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentFactory;->getFragment(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)Landroid/app/Fragment;

    move-result-object v2

    .line 82
    .local v2, "newFragment":Landroid/app/Fragment;
    const v3, 0x1020002

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 84
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "newFragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "AdPopupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showAdPopup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCp(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v0

    .line 67
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->showAdPopup(I)V

    .line 68
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;->onKeyBackPressed()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->overridePendingTransition(II)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_AD_POPUP_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->showAdPopup(I)V

    .line 55
    iput v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->mAdType:I

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    iget v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->mAdType:I

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setVideoAdOn(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public setOnKeyBackPressedListener(Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->mOnKeyBackPressedListener:Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;

    .line 92
    return-void
.end method
