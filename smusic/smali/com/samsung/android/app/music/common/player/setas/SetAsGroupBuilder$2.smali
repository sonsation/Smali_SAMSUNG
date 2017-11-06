.class final enum Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;
.super Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
.source "SetAsGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# instance fields
.field private final ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

.field private final PACKAGE_NAMES:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;)V

    .line 41
    new-array v0, v8, [Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    const v2, 0x7f12056d

    const v3, 0x7f0a00db

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    const v2, 0x7f120575

    const v3, 0x7f0a00da

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    const v2, 0x7f120576

    const v3, 0x7f0a00d9

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    .line 46
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "com.android.phone"

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants$PackageName;->CONTACT:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "com.sec.android.app.clockpackage"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 80
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-object v2

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not found app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;
    .param p3, "viewRoot"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->PACKAGE_NAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->PACKAGE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->build(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V

    .line 60
    const-string/jumbo v5, "phone"

    .line 61
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 62
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-nez v5, :cond_3

    .line 63
    const v5, 0x7f12056d

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v3

    .line 64
    .local v3, "phoneView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_1
    const v5, 0x7f120575

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v1

    .line 68
    .local v1, "callerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_2
    const v5, 0x7f120576

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v0

    .line 72
    .local v0, "alarmView":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eqz v0, :cond_3

    .line 73
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 76
    .end local v0    # "alarmView":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    .end local v1    # "callerView":Landroid/view/View;
    .end local v3    # "phoneView":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public getItems()[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;->ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    return-object v0
.end method
