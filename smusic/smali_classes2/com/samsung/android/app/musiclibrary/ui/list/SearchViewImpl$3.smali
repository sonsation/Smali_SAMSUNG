.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;
.super Ljava/lang/Object;
.source "SearchViewImpl.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->createSearchView()Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryText()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "query":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_1

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 165
    .local v1, "hint":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->notifyOnQueryTextSubmit(Ljava/lang/String;)Z

    .line 170
    .end local v1    # "hint":Ljava/lang/CharSequence;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->val$method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Landroid/widget/SearchView;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubmitQuery failed | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
