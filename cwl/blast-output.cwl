class: CommandLineTool
cwlVersion: v1.0
baseCommand:
  - ch-run
inputs:
  cc_flags:
    default: '--no-home'
    type: string
    inputBinding:
      position: 1
  output_dir:
    type: string?
    inputBinding:
      position: 2
      prefix: '-b'
  scripts_dir:
    type: string?
    inputBinding:
      position: 3
      prefix: '-b'
  image:
    type: string
    inputBinding:
      position: 4
  system:
    default: '--'
    type: string
    inputBinding:
      position: 5
  command:
    default: sh
    type: string
    inputBinding:
      position: 6
  output_script: 
    type: string
    inputBinding:
      position: 7
  worker0_done: string?
  worker1_done: string?
outputs: 
  output_done:
    type: string
    outputBinding:
      outputEval: $((inputs.output_dir + '/output-done.txt'))

