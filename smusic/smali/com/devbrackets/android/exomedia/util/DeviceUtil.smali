.class public Lcom/devbrackets/android/exomedia/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
    }
.end annotation


# static fields
.field protected static final NON_COMPATIBLE_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->NON_COMPATIBLE_DEVICES:Ljava/util/List;

    .line 36
    sget-object v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->NON_COMPATIBLE_DEVICES:Ljava/util/List;

    new-instance v1, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;

    const-string v2, "Amazon"

    invoke-direct {v1, v2}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceTV(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 81
    const-string/jumbo v2, "uimode"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 82
    .local v0, "uiManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 85
    .end local v0    # "uiManager":Landroid/app/UiModeManager;
    :cond_0
    return v1
.end method

.method public isNotCompatible(Ljava/util/List;)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "nonCompatibleDevices":Ljava/util/List;, "Ljava/util/List<Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;>;"
    const/4 v1, 0x1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;

    .line 58
    .local v0, "device":Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->ignoreModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    .end local v0    # "device":Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
    :goto_0
    return v1

    .line 63
    .restart local v0    # "device":Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
    :cond_1
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 69
    .end local v0    # "device":Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsExoPlayer(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->NON_COMPATIBLE_DEVICES:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->isNotCompatible(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->isDeviceTV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
