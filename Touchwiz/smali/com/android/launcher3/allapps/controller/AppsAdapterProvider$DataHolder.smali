.class public Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;
.super Ljava/lang/Object;
.source "AppsAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataHolder"
.end annotation


# instance fields
.field mAddItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDestroyed:Z

.field mFirstLoadStubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/Stub;",
            ">;"
        }
    .end annotation
.end field

.field mFirstLoaded:Z

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mModelPrepared:Z

.field mPendingUdpateItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSavedDeferRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStopped:Z

.field mStubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/Stub;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mModelPrepared:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mStopped:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mItems:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mPendingUdpateItems:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mStubs:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoadStubs:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mSavedDeferRunnables:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mAddItems:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mRemoveItems:Ljava/util/ArrayList;

    return-void
.end method
