.class Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;
.super Ljava/lang/Object;
.source "VoucherAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

.field final synthetic val$adapter:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;->val$adapter:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;->val$adapter:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    .line 269
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->getItemId()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    .line 270
    return-void
.end method
