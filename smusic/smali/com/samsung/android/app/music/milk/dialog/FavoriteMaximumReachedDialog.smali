.class public Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.source "FavoriteMaximumReachedDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileDeleteErrorDialog"


# instance fields
.field private mFinishParent:Ljava/lang/Boolean;

.field private maxCount:I

.field private requestType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->mFinishParent:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    .locals 1
    .param p0, "requestType"    # Ljava/lang/String;
    .param p1, "maxCount"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getInstance(Ljava/lang/String;IZ)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;IZ)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    .locals 3
    .param p0, "requestType"    # Ljava/lang/String;
    .param p1, "maxCount"    # I
    .param p2, "finishParent"    # Z

    .prologue
    .line 39
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;-><init>()V

    .line 41
    .local v1, "dialog":Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "request_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "max_count"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v2, "finish_parent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    .line 55
    .local v3, "ret":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v4, "request_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    .line 59
    const-string v4, "max_count"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->maxCount:I

    .line 60
    const-string v4, "finish_parent"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->mFinishParent:Ljava/lang/Boolean;

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, "mTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 66
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    const v4, 0x7f0a03b2

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "821"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v4

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->maxCount:I

    .line 85
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 84
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    .line 88
    .local v2, "posBtn":Landroid/widget/Button;
    new-instance v4, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v3

    .line 69
    .end local v2    # "posBtn":Landroid/widget/Button;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    const v4, 0x7f0a03ac

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "823"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    const v4, 0x7f0a03b1

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "822"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->requestType:Ljava/lang/String;

    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    const v4, 0x7f0a02f0

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "824"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
