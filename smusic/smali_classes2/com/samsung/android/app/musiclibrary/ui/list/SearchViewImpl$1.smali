.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;
.super Ljava/lang/Object;
.source "SearchViewImpl.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->notifyOnQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->notifyOnQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
