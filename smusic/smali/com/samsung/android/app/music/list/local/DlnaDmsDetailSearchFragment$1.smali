.class Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "DlnaDmsDetailSearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 98
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    .line 99
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 100
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 101
    const-string v2, "SMUSIC-UiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item selected id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;

    const/4 v3, 0x1

    invoke-static {v2, p2, v3}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;IZ)V

    goto :goto_0
.end method
