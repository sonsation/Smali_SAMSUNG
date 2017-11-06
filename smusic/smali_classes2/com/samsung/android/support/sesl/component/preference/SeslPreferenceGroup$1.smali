.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$1;
.super Ljava/lang/Object;
.source "SeslPreferenceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->access$000(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->clear()V

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
