.class public Lcom/samsung/android/settings/wifi/mobileap/PinDialog;
.super Landroid/app/AlertDialog;
.source "PinDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    return-void
.end method


# virtual methods
.method public getPin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    const v2, 0x7f1109d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 99
    .local v0, "wps_pin_box":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    .line 89
    const v0, 0x7f0b1554

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setTitle(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0512

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b13e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setView(Landroid/view/View;)V

    .line 93
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
