.class Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$4;
.super Ljava/lang/Object;
.source "SpinnerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setDropDownItems([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$4;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$4;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)V

    .line 123
    return-void
.end method
