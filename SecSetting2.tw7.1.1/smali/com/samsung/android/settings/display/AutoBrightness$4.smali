.class Lcom/samsung/android/settings/display/AutoBrightness$4;
.super Ljava/lang/Object;
.source "AutoBrightness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AutoBrightness;->showResetPatternDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/AutoBrightness;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$4;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    return-void
.end method
