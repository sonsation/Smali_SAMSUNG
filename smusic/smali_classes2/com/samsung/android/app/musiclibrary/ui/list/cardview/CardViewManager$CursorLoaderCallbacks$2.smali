.class Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;
.super Ljava/lang/Object;
.source "CardViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

.field final synthetic val$holder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->val$holder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->val$position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->val$holder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->onThumbnailClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V

    .line 142
    return-void
.end method
