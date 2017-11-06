.class public Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SeslSupportActionModeWrapper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMenus:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final mWrappedCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mMenus:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .line 151
    return-void
.end method


# virtual methods
.method public getActionModeWrapper(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .prologue
    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;

    .line 178
    .local v2, "wrapper":Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;->mWrappedObject:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    if-ne v3, p1, :cond_0

    .line 188
    :goto_1
    return-object v2

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "wrapper":Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;
    :cond_1
    new-instance v2, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 187
    .restart local v2    # "wrapper":Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onActionItemClicked(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 172
    return-void
.end method

.method public onPrepareActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
