.class Lcom/android/keyguard/KeyguardAccountView$1;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAccountView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method
