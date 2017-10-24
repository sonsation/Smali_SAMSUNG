.class Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "online"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set3(Lcom/android/server/smartclip/SpenGestureManagerService;I)I

    .line 197
    return-void

    .line 200
    :cond_0
    sget-object v17, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Receive broadcast : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v17, "com.samsung.pen.INSERT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;->isInitialStickyBroadcast()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 204
    return-void

    .line 207
    :cond_1
    const-string/jumbo v17, "penInsert"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 208
    .local v10, "penInsert":Z
    const-string/jumbo v17, "isBoot"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 209
    .local v8, "isBoot":Z
    sget-object v17, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "penInsert : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".isBoot : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap0(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;

    move-result-object v13

    .line 212
    .local v13, "topMostComponent":Landroid/content/ComponentName;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, "topMostPackageName":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_5

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get12(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v20

    sub-long v6, v18, v20

    .line 217
    .local v6, "elapsed":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get12(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap5(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 220
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set9(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get1()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v14, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap12(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v6    # "elapsed":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set7(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 232
    sget-object v17, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Start AirCommand. #1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v5, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 235
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v17, "action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v18, "topComponent"

    .line 237
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 236
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v17, "batteryStatus"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get3(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string/jumbo v17, "coverOpened"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap14(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    .line 193
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "isBoot":Z
    .end local v10    # "penInsert":Z
    .end local v13    # "topMostComponent":Landroid/content/ComponentName;
    .end local v14    # "topMostPackageName":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 212
    .restart local v8    # "isBoot":Z
    .restart local v10    # "penInsert":Z
    .restart local v13    # "topMostComponent":Landroid/content/ComponentName;
    :cond_4
    const-string/jumbo v14, ""

    .restart local v14    # "topMostPackageName":Ljava/lang/String;
    goto/16 :goto_0

    .line 224
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set9(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get2()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v14, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap12(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    .restart local v5    # "extras":Landroid/os/Bundle;
    :cond_6
    const-string/jumbo v17, ""

    goto :goto_2

    .line 241
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "isBoot":Z
    .end local v10    # "penInsert":Z
    .end local v13    # "topMostComponent":Landroid/content/ComponentName;
    .end local v14    # "topMostPackageName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v17, "com.samsung.cover.OPEN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 242
    const-string/jumbo v17, "coverOpen"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 243
    .local v9, "isCoverOpen":Z
    sget-object v17, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isCoverOpen : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set4(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto :goto_3

    .line 246
    .end local v9    # "isCoverOpen":Z
    :cond_8
    const-string/jumbo v17, "com.samsung.android.service.airviewdictionary.set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "active"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set5(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 248
    const-string/jumbo v17, "x"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 249
    .local v15, "x":I
    const-string/jumbo v17, "y"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 250
    .local v16, "y":I
    const-string/jumbo v17, "time"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 251
    .local v12, "time":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v12}, Lcom/android/server/smartclip/SpenGestureManagerService;->setHoverStayValues(III)V

    goto/16 :goto_3

    .line 252
    .end local v12    # "time":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_9
    const-string/jumbo v17, "com.sec.android.intent.action.BLACK_MEMO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 253
    const-string/jumbo v17, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "show"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set1(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto/16 :goto_3
.end method
