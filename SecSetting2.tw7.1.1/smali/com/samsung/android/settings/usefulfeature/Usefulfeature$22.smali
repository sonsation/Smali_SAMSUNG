.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;
.super Ljava/lang/Object;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 2509
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap10(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    .line 2510
    return-void
.end method
