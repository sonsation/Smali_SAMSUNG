.class Lcom/samsung/android/app/music/list/common/ListHeaderManager$2;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$2;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showButtonBackground(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$2;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$700(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 139
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "showButton":Landroid/view/View;
    if-nez v0, :cond_1

    .line 141
    const v2, 0x7f120222

    .line 142
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 143
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 145
    :cond_1
    if-eqz v0, :cond_0

    .line 146
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    .line 149
    .end local v0    # "showButton":Landroid/view/View;
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
