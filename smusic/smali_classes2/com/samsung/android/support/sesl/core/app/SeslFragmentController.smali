.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;
.super Ljava/lang/Object;
.source "SeslFragmentController.java"


# instance fields
.field private final mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "callbacks":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 54
    return-void
.end method

.method public static final createController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
            "<*>;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "callbacks":Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;, "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback<*>;"
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 107
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    .line 203
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    .line 192
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    .line 273
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroyView()V

    .line 262
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchLowMemory()V

    .line 318
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 284
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 379
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPause()V

    .line 236
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 295
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchReallyStop()V

    .line 251
    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    .line 225
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    .line 214
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStop()V

    .line 247
    return-void
.end method

.method public doLoaderDestroy()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderDestroy()V

    .line 422
    return-void
.end method

.method public doLoaderRetain()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderRetain()V

    .line 415
    return-void
.end method

.method public doLoaderStart()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderStart()V

    .line 397
    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderStop(Z)V

    .line 408
    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "actives":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    if-nez p1, :cond_1

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "actives":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getActiveFragmentsCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .restart local p1    # "actives":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, p1

    .line 97
    goto :goto_0
.end method

.method public getActiveFragmentsCount()I
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 83
    .local v0, "actives":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getFragmentManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->reportLoaderStart()V

    .line 429
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    .line 160
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    .line 150
    return-void
.end method

.method public restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "loaderManagers":Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap<Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V

    .line 447
    return-void
.end method

.method public retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public retainNestedNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->retainNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->retainNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    move-result-object v0

    .line 172
    .local v0, "nonconf":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
