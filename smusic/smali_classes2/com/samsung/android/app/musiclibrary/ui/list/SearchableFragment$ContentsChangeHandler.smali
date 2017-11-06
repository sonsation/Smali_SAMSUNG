.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;
.super Landroid/os/Handler;
.source "SearchableFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V
    .locals 0

    .prologue
    .line 193
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>.ContentsChangeHandler;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;

    .prologue
    .line 193
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>.ContentsChangeHandler;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>.ContentsChangeHandler;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->restartListLoader()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->access$302(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Z)Z

    goto :goto_0
.end method
