.class final Lcom/android/internal/os/ZygoteInit$4;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classList:Ljava/util/ArrayList;

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V
    .locals 0
    .param p2, "val$runtime"    # Ldalvik/system/VMRuntime;

    .prologue
    .line 854
    .local p1, "val$classList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$4;->val$classList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$4;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 858
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/os/ZygoteInit;->parallelPCThread3running:Z

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 860
    .local v6, "startTime":J
    const-wide/16 v10, 0x0

    .line 861
    .local v10, "time1":J
    const-wide/16 v12, 0x0

    .line 863
    .local v12, "time2":J
    sget-boolean v9, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/internal/os/ZygoteInit;->debug_flag:Z

    if-eqz v9, :cond_0

    .line 864
    const-string/jumbo v9, "Zygote"

    const-string/jumbo v14, " Inside Thread3 : Setting priority to Audio as primaryZygoteThreadRunning=TRUE"

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/16 v9, -0x13

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 868
    :cond_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->-get5()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->-get1()I

    move-result v9

    if-gt v3, v9, :cond_7

    .line 869
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ZygoteInit$4;->val$classList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 875
    .local v5, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    :try_start_0
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_1

    .line 877
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 879
    const-string/jumbo v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "postpone "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v5, 0x0

    .line 884
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_4

    .line 868
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 875
    .restart local v5    # "line":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 887
    .end local v5    # "line":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 895
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v9

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->-get0()I

    move-result v14

    if-le v9, v14, :cond_2

    .line 897
    const-string/jumbo v9, "Zygote"

    .line 898
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "!@GC at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 897
    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 901
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ZygoteInit$4;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 902
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 903
    const-string/jumbo v9, "Zygote"

    const-string/jumbo v14, "!@GC end"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 905
    :catch_0
    move-exception v2

    .line 906
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Class not found for preloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 907
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v8

    .line 908
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "!@Error preloading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 911
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 912
    instance-of v9, v8, Ljava/lang/Error;

    if-eqz v9, :cond_5

    .line 913
    nop

    nop

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 915
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_5
    instance-of v9, v8, Ljava/lang/RuntimeException;

    if-eqz v9, :cond_6

    .line 916
    nop

    nop

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 918
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_6
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 921
    .end local v4    # "j":I
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_7
    sget-boolean v9, Lcom/android/internal/os/ZygoteInit;->primaryZygoteThreadRunning:Z

    if-eqz v9, :cond_8

    .line 922
    const-string/jumbo v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "!@prldclss3: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->-get4()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " classes in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_8
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/os/ZygoteInit;->parallelPCThread3running:Z

    .line 924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    long-to-int v9, v14

    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->-set2(I)I

    .line 855
    return-void
.end method
