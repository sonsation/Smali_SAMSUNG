.class Lcom/samsung/android/settings/SmartStaySettings$4;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SmartStaySettings;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SmartStaySettings;

.field final synthetic val$ani:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SmartStaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SmartStaySettings;
    .param p2, "val$ani"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/settings/SmartStaySettings$4;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    iput-object p2, p0, Lcom/samsung/android/settings/SmartStaySettings$4;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings$4;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 182
    return-void
.end method
