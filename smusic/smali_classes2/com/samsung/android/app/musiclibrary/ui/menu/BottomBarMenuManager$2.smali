.class Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$2;
.super Ljava/lang/Object;
.source "BottomBarMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "bottomMenuItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->access$000(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;->access$100(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$MenuWrapper;)Landroid/util/SparseArray;

    move-result-object v3

    .line 152
    .local v3, "menuItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/MenuItem;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 153
    .local v4, "menuSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 154
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 155
    .local v2, "menuItem":Landroid/view/MenuItem;
    instance-of v6, v2, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;

    if-eqz v6, :cond_0

    .line 156
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;

    .end local v2    # "menuItem":Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->access$200(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;)Landroid/view/View;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "run() - bottomMenuItemViews: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", menuSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 162
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 164
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method
