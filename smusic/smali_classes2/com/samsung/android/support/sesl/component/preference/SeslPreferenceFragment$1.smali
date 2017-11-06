.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;
.super Landroid/os/Handler;
.source "SeslPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$100(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
