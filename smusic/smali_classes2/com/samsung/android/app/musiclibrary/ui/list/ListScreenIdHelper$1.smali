.class Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;
.super Ljava/lang/Object;
.source "ListScreenIdHelper.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$102(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$102(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V

    .line 69
    :cond_0
    return-void
.end method
