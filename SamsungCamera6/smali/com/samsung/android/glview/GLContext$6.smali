.class Lcom/samsung/android/glview/GLContext$6;
.super Landroid/view/View$AccessibilityDelegate;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLContext;-><init>(Landroid/content/Context;Lcom/samsung/android/glview/GLContext$GLInitializeListener;Landroid/opengl/GLSurfaceView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->access$800(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->mNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method
