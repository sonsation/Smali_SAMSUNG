.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;
.super Ljava/lang/Thread;
.source "ServiceCoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$keyWord:Ljava/lang/String;

.field final synthetic val$list:[J

.field final synthetic val$listType:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(ILjava/lang/String;[JI)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$listType:I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$keyWord:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$list:[J

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 190
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$listType:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$keyWord:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$list:[J

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$position:I

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->openQueue(ILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v7

    .line 196
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
