.class Lcom/samsung/android/settings/notification/RadioPreference$2;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/RadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/RadioPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/RadioPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/RadioPreference;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/notification/RadioPreference$2;->this$0:Lcom/samsung/android/settings/notification/RadioPreference;

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

    .line 114
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 115
    sparse-switch p2, :sswitch_data_0

    .line 123
    :cond_0
    return v1

    .line 118
    :sswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 119
    return v2

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
