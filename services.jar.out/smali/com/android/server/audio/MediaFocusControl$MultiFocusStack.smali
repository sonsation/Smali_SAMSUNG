.class Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiFocusStack"
.end annotation


# instance fields
.field private mFocusStacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    .line 1190
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1188
    return-void
.end method


# virtual methods
.method public getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "needRemove"    # Z

    .prologue
    .line 1225
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1226
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 1227
    .local v0, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1228
    .local v3, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1229
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1230
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1231
    if-eqz p3, :cond_1

    .line 1232
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1233
    :cond_1
    return-object v1

    .line 1225
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    .end local v0    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v3    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method

.method public getFocusRequester(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/audio/FocusRequester;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1211
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 1212
    .local v0, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1213
    .local v4, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1215
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1216
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1217
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1210
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1221
    .end local v0    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2
    return-object v3
.end method

.method public getFocusStack(I)Ljava/util/Stack;
    .locals 2
    .param p1, "device"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(I)Ljava/util/Stack;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method
