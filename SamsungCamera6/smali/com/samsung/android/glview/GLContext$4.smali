.class Lcom/samsung/android/glview/GLContext$4;
.super Ljava/lang/Object;
.source "GLContext.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$4;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 3

    const-string v0, "GLContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchExplorationStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$4;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$200(Lcom/samsung/android/glview/GLContext;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$4;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$300(Lcom/samsung/android/glview/GLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$4;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLContext;->access$400(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$4;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/glview/GLContext;->access$500(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    goto :goto_0
.end method
