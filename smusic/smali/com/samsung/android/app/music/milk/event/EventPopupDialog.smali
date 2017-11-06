.class public Lcom/samsung/android/app/music/milk/event/EventPopupDialog;
.super Landroid/app/DialogFragment;
.source "EventPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventPopupDialog"


# instance fields
.field private mIsDoNotShow:Z

.field private mListener:Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;

.field private mOnClick:Landroid/view/View$OnClickListener;

.field private mPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mIsDoNotShow:Z

    .line 94
    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;-><init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/EventPopupDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mIsDoNotShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 40
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0f0266

    invoke-direct {v4, v5, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    .local v4, "ret":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 43
    const v5, 0x7f0400e2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v5, "popup"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 50
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    if-nez v5, :cond_1

    .line 51
    const-string v5, "EventPopupDialog"

    const-string v7, "Invalid Event Data"

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 71
    .end local v4    # "ret":Landroid/app/Dialog;
    :goto_0
    return-object v4

    .line 55
    .restart local v4    # "ret":Landroid/app/Dialog;
    :cond_1
    const v5, 0x7f1202ac

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 56
    .local v2, "close":Landroid/widget/ImageView;
    const v5, 0x7f1202aa

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 57
    .local v3, "image":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    const v5, 0x7f1202ab

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 59
    .local v1, "checkBox":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0200d7

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 61
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v5, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$1;-><init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mListener:Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mListener:Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mIsDoNotShow:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;->onPopupDismissed(Z)V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 88
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 79
    return-void
.end method

.method public setOnEventPopupListener(Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->mListener:Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;

    .line 92
    return-void
.end method
