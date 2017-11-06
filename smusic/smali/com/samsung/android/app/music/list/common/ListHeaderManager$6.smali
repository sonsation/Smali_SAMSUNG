.class Lcom/samsung/android/app/music/list/common/ListHeaderManager$6;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initEdit(Landroid/view/View;)V
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
    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$6;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$6;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startActionMode()V

    .line 256
    return-void
.end method
