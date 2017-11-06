.class public Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;
.super Landroid/app/DialogFragment;
.source "MobileDataUsageNoticeDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    const-string v6, "801"

    .line 32
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 35
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04024c

    const/4 v7, 0x0

    .line 37
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1200b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a040f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v5, 0x7f120417

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0412

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v5, 0x7f1200c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 43
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0146

    new-instance v7, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog$2;

    invoke-direct {v7, p0, v2, v0}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;Landroid/widget/CheckBox;Landroid/app/Activity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a008a

    new-instance v7, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog$1;

    invoke-direct {v7, p0, v2, v0}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;Landroid/widget/CheckBox;Landroid/app/Activity;)V

    .line 61
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 80
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 81
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;->setCancelable(Z)V

    .line 83
    return-object v3
.end method
