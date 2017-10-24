.class Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;
.super Ljava/lang/Object;
.source "MiscPolicy.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearClipboardData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    .line 1821
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-object v0
.end method

.method public setClipboardDataListChange(I)V
    .locals 2
    .param p1, "changeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1849
    const-string/jumbo v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataListChange"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    return-void
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .locals 5
    .param p1, "clipboardDataMgr"    # Landroid/sec/clipboard/data/IClipboardDataList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1854
    const-string/jumbo v2, "MiscPolicy"

    const-string/jumbo v3, "setClipboardDataMgr"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p1}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    .line 1856
    .local v1, "size":I
    const-string/jumbo v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1858
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/sec/clipboard/data/IClipboardDataList;->removeData(I)Z

    .line 1857
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1853
    :cond_0
    return-void
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .locals 2
    .param p1, "clbEvent"    # Landroid/sec/clipboard/IClipboardDataUiEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1864
    const-string/jumbo v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataUiEvent"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    return-void
.end method
