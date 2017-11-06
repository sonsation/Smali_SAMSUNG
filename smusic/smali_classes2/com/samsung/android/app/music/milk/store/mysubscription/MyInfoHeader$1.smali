.class Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader$1;
.super Ljava/lang/Object;
.source "MyInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0xa

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    .line 57
    return-void
.end method
