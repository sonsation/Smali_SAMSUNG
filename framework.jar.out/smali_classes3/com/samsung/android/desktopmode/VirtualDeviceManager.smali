.class public Lcom/samsung/android/desktopmode/VirtualDeviceManager;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDefaultDisplay:Landroid/view/Display;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mVirtualDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->DEBUG:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDefaultDisplay:Landroid/view/Display;

    .line 32
    return-void
.end method

.method private createVirtualDevice(IIZ)Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    .locals 7
    .param p1, "windowType"    # I
    .param p2, "layoutId"    # I
    .param p3, "connectedDock"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    .line 56
    :cond_0
    new-instance v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;-><init>(Lcom/samsung/android/desktopmode/VirtualDeviceManager;Landroid/content/Context;IIZ)V

    .line 57
    .local v0, "touchPad":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-object v0

    .line 50
    .end local v0    # "touchPad":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->findMatchedDevice(II)Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    move-result-object v6

    .line 52
    .local v6, "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    if-eqz v6, :cond_0

    return-object v6
.end method

.method private findMatchedDevice(II)Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    .locals 4
    .param p1, "windowType"    # I
    .param p2, "layoutId"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "found":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    iget-object v3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "vs$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    .line 99
    .local v1, "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    iget v3, v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    if-ne v3, p1, :cond_0

    .line 100
    iget v3, v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    if-ne v3, p2, :cond_0

    .line 101
    move-object v0, v1

    .line 106
    .end local v0    # "found":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    .end local v1    # "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    .end local v2    # "vs$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public isVirtualDeviceShowing()Z
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vs$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    .line 89
    .local v0, "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 92
    .end local v0    # "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    .end local v1    # "vs$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public removeAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    sget-boolean v2, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeAll()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    .line 79
    .local v0, "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 81
    .end local v0    # "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 82
    iput-object v4, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    .line 74
    .end local v1    # "vs$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public removeVirtualDevice(II)V
    .locals 4
    .param p1, "windowType"    # I
    .param p2, "layoutId"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->findMatchedDevice(II)Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    move-result-object v0

    .line 64
    .local v0, "found":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVirtualDevice(). Cannot find this device, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, ", layoutId="

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showVirtualDevice(IIZ)V
    .locals 4
    .param p1, "windowType"    # I
    .param p2, "layoutId"    # I
    .param p3, "connectedDock"    # Z

    .prologue
    .line 39
    sget-boolean v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showVirtualDevice()  type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", layoutId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connectedDock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->createVirtualDevice(IIZ)Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    move-result-object v0

    .line 42
    .local v0, "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 113
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mVirtualDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "vs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;

    .line 115
    .local v1, "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    .end local v1    # "vs":Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
    .end local v2    # "vs$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
