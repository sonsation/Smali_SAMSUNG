.class Lcom/samsung/android/settings/multisound/SASButtonPreference$2;
.super Ljava/lang/Object;
.source "SASButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/SASButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/SASButtonPreference;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$2;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 127
    sparse-switch p2, :sswitch_data_0

    .line 134
    :cond_0
    return v1

    .line 130
    :sswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 131
    return v2

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method