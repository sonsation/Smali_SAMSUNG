.class Lcom/samsung/android/glview/GLAbsList$1;
.super Ljava/lang/Object;
.source "GLAbsList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLAbsList;->hideScrollBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLAbsList;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLAbsList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList$1;->this$0:Lcom/samsung/android/glview/GLAbsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList$1;->this$0:Lcom/samsung/android/glview/GLAbsList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLAbsList;->access$002(Lcom/samsung/android/glview/GLAbsList;Z)Z

    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
