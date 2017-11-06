.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "SeslPreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->access$000(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;)V

    .line 88
    return-void
.end method
