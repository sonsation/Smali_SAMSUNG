.class Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "CustomMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->access$002(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)I

    .line 40
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->access$102(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)I

    .line 45
    return-void
.end method
