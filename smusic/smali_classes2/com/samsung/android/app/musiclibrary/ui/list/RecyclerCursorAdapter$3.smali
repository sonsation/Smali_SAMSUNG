.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecyclerCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->invokeNotifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

.field final synthetic val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 732
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 735
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    .line 737
    return-void
.end method
